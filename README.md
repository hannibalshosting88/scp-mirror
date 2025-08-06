# 📦 SCP Data API — Community Mirror

**A continuously updated mirror of the SCP Data API — containing structured metadata and content for SCP Items, Tales, Hubs, and GOI articles.**  
✨ *Built for redundancy, load distribution, and community experimentation.*

> This repository mirrors the data made available by [scp-data.tedivm.com](https://scp-data.tedivm.com/), authored and maintained by [@tedivm](https://github.com/tedivm).  
> All original content belongs to its respective creators and follows the [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) license as defined by the SCP Wiki.

---

## 🔁 Accessing the Data

You can interact with this data in **two ways**:

- 📥 **Direct download** of `.json` files from this GitHub repository.
- 🔄 **Pull + Parse** programmatically via GitHub Actions, cronjobs, or external scripts.

Data is structured and updated **daily**, including content and metadata.

---

## 🧱 Universal Fields

Each entry — whether it’s an SCP Item, Tale, or GOI page — includes shared metadata:

- `link`: A path-based primary key.
- `url`: Direct link to the SCP Wiki page.
- `page_id`: Wikidot ID for the page (useful for API lookups).
- `created_at`: ISO timestamp of article creation.
- `created_by`: Wikidot username of the author, if available.

### 🕓 `history` array:
Each revision log includes:
- `author`
- `author_href` (profile URL or `false`)
- `comment` (editor notes or bot messages)
- `date` (ISO timestamp)

---

## 📚 Dataset Breakdown

### 📁 `data/scp/hubs/index.json`

- Groups articles by topic, canon, or theme.
- Each hub includes:
  - `title`
  - `references` (list of article links)
  - `tags`
  - `raw_content`

---

### 📁 `data/scp/items/index.json`

- Core SCP objects (e.g., SCP-049, SCP-682).
- Each item includes:
  - `title`, `rating`, `tags`, `series`, `scp`, `scp_number`
  - `hubs`: List of hubs it's part of.
  - `images`: List of image URLs.
  - `references`: Linked pages and context
  - `content_file`: Points to associated content file

#### 📄 `data/scp/items/content_index.json`
Maps SCP series to content files. These files contain:
- `raw_content`: Clean HTML from `#page-content`
- `raw_source`: Original wikitext

---

### 📝 `data/scp/tales/index.json`

- Short stories not bound to GOI canon.
- Metadata fields mirror SCP Items:
  - `title`, `created_by`, `created_at`, `tags`, `hubs`, `references`, `images`, `rating`
  - Includes `history` and `content_file`

#### 📄 `data/scp/tales/content_index.json`
Maps year → content file (by creation date). Same structure as item content files.

---

### 🧪 `data/scp/goi/index.json` & `content_goi.json`

- GOI (“Groups of Interest”) are specialized narrative formats.
- GOI metadata is structurally similar to Tales.
- `content_goi.json` contains full GOI content with `raw_content` and `raw_source`.

---

## 🧾 Licensing & Attribution

- 🔗 **Original API**: [scp-data.tedivm.com](https://scp-data.tedivm.com/)  
- 👤 **Author**: [@tedivm](https://github.com/tedivm)  
- 📜 **Content License**: [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)

⚠️ This is an **unofficial mirror** intended for availability, experimentation, and educational use. It is not affiliated with the SCP Foundation, WikiDot, or the original API author.

---

## 🤝 Contributing

If you find outdated data, issues in parsing, or want to help build tools on top of this dataset (like search, tagging, or TTS bots), feel free to open a PR or issue.

---

## 🚀 Example Projects Using This Mirror

- 🔊 **SCP Audio Bots** (TTS + Telegram)
- 🌐 **Offline SCP Browser**
- 📈 **Metadata Visualization & Tag Analytics**

---

## 🛠️ Maintenance & Sync Notes

This mirror is updated via `cron`/GitHub Action (or your custom setup).  
If you fork this, please include attribution and ensure your sync respects the original API server (do not abuse bandwidth).

