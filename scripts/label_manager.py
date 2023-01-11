import os
from os import PathLike
import re
from typing import Union
import pandas as pd

ENV_NAMES = {
    "thm": "theorem",
    "def": "definition",
    "pro": "proposition",
    "lem": "lemma",
    "cor": "corollary",
    "rem": "remark",
    "eg": "example"
}

class LabelManager:
    
    def __init__(self, tex_dir: PathLike) -> None:
        
        self.__tex_dir = os.path.realpath(tex_dir)
        assert self.__tex_dir
        
        self.__text: str = None
        self.__env_occurrence: dict[str, int] = {}
        
        self.refresh()
        
    def refresh(self) -> None:
        self.__text = self._get_text()
        self._count_occurrence()
    
    def _get_text(self) -> str:
        text: str = None
        for filename in os.listdir(self.__tex_dir):
            filepath = os.path.join(
                self.__tex_dir,
                filename
            )
            if filepath.endswith(".tex"):
                with open(filepath) as f:
                    text = f.read()
        assert text is not None
        return text
    
    def text(self) -> str:
        return self.__text
    
    def _count_occurrence(self) -> None:
        for env_name in ENV_NAMES.values():
            self.__env_occurrence[env_name] = re.findall(
                r"\\begin{" + env_name + r"}",
                self.__text
            ).__len__()
    
    def env_occurrence(self, series = False) -> Union[dict, pd.Series]:
        if series:
            return pd.Series(self.__env_occurrence)
        else:
            return self.__env_occurrence.copy()
    
    def _relabel_first_env(self) -> bool:
        text = self.__text
        is_text_changed = False
        text_start = 0
        while True:
            mat = re.search(
                r"\\label{[a-z]+:\d+}",
                text[text_start : ]
            )
            
            if mat is None:
                break
            else:
                # Get the label tag and number,
                # for exmaple, in the label `\label{thm:1}`,
                # `thm` is the tag and `1` is the label number
                matched_text = mat.group()
                tag_num = matched_text[matched_text.find('{') + 1 : matched_text.find('}')]
                (tag, num) = tag_num.split(':')
                num = int(num)
                
                # Get environment name based on tag
                env_name = ENV_NAMES.get(tag, None)
                
                if env_name is None:
                    # No need to relabel
                    text_start += mat.end()
                else:
                    # Count the occurence of the environment
                    # before the label
                    occurence = re.findall(
                        r"\\begin{" + env_name + r"}",
                        text[ : text_start + mat.end()]
                    ).__len__()
                    
                    if occurence == num:
                        # No need to relabel
                        text_start += mat.end()
                    else:
                        # Relabel!
                        # Replace all the text like `<tag>:<num>`
                        # with the new label
                        text = text.replace(
                            f"{tag}:{num}",
                            f"{tag}:{occurence}"
                        )
                        self.__text = text
                        
                        print(f"{tag}:{occurence}")
                        
                        # Text is changed
                        is_text_changed = True
                        
                        # Quit the loop
                        break
                
        return is_text_changed
    
    
    def relabel(self) -> None:
        
        while True:
            is_text_changed = self._relabel_first_env()
            # break
        
            if not is_text_changed:
                break
        
        return self.__text
        
    
    
    
    
if __name__ == "__main__":
    
    label_manager = LabelManager("./mathematical-analysis")
    
    # print(label_manager.env_occurrence(series = True))
    text = label_manager.relabel()
    # print(text)
    # print(1 == int("1"))

