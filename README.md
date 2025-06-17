🚀 Project Name : URLStripper
===============
![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-purple.svg)
<a href="https://github.com/gigachad80/URLStripper/issues"><img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"></a>
#### Strips HTTP/HTTPS protocols from URL lists to prepare clean URLs for bug bounty tools like eyewitness, gowitness, and port scanners.
---
### 📌 Overview
*URLStripper* is a Ruby utility that processes lists of URLs by removing HTTP and/or HTTPS protocols. This tool is essential for bug bounty hunters who need clean URLs without protocol prefixes for various security testing tools like eyewitness, gowitness, nmap, and other reconnaissance utilities that expect domain-only input.



### 🙃 Why I Created This
I developed this utility to solve a common pain point in bug bounty hunting. Many reconnaissance tools like eyewitness (for screenshots), gowitness, or port scanning tools expect clean domain names without the `http://` or `https://` protocols. Manually editing large URL lists is tedious and error-prone. This tool automates the process, allowing hunters to quickly prepare their target lists for various security testing tools without the repetitive task of removing protocols from each URL.

### 📚 Requirements & Dependencies
* Ruby (version 2.7+ recommended)
* A text file containing URLs (one per line)
* Target domains for your bug bounty scope

### ⚡ Quick Installation & Usage
1.  Git clone this repo:
    ```bash
    git clone https://github.com/gigachad80/URLStripper
    ```
2.  Type `ruby url-stripper.rb -h` to see all available options.
3.  Prepare your URL list file and use the appropriate stripping options.

### Demo Syntax : 
```bash
ruby url-stripper.rb -p urls.txt (Remove only http:// from URLs )

```
```bash
ruby url-stripper.rb -s urls.txt (Remove only https:// from URLs)

```
```bash
ruby url-stripper.rb -b urls.txt (Remove both http:// and https:// from URLs)
 
```
```bash
ruby url-stripper.rb urls.txt (Print URLs as-is (no stripping) with warning)
```



### 🤔 Why This Name?
Initially, I randomly named it `oiiai.rb` based on a spinning cat meme (don't ask why!), but later realized it needed a more descriptive name. URLStripper perfectly describes what it does - it strips URL protocols cleanly and efficiently.

### ⌚ Total Time Taken to Develop & Test
45 minutes for initial development and testing


### 🎯 Perfect For Bug Bounty Tools
This utility works seamlessly with:
- **EyeWitness**: For taking screenshots of web applications
- **GoWitness**: For web screenshot automation  
- **Nmap**: For port scanning clean domains
- **Sublist3r**: For subdomain enumeration
- **Aquatone**: For domain reconnaissance
- **Any tool that expects clean domain input**


### 📞 Contact
**📧 Email:** pookielinuxuser@tutamail.com

### 📄 License
Licensed under **MIT Licence**

---
**🕒 Last Updated:** June 17, 2025

**🕒 First Published:** June 17, 2025



