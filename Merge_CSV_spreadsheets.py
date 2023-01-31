#!/usr/bin/env python
# coding: utf-8

# In[8]:


import os
import pandas as pd


files = [file for file in os.listdir() if file.endswith('.csv')]
    
df = pd.concat([pd.read_csv(f) for f in files])

df.to_csv('./df.csv', sep=';', index=False)

