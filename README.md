# 🛒 E-commerce Conversion Funnel Analysis (GA4 + BigQuery + Tableau)

## 📌 Project Overview
This project presents an interactive **E-commerce Conversion Funnel Dashboard** designed for marketing managers to analyze website conversions, user journey steps, and traffic performance. The analysis is based on raw Google Analytics 4 (GA4) public data processed in BigQuery and visualized in Tableau Public.<img width="1295" height="479" alt="dashboard_preview" src="https://github.com/user-attachments/assets/74e5548f-9c7c-4613-ac5d-d604700e4e60" />


---

## 🎯 Key Objectives & Features
* **Key Metrics Tracking:** Sessions, Orders, Total Sales, and Conversion Rates.
* **Full-Funnel Visualization:** 7-step E-commerce funnel tracking user progression from session start to completed purchase.
* **Interactive Exploration:** Multi-dimensional filtering by user demographics, traffic channels, and technical attributes.
* **Executive & Operational Insights:** Built following best UI/UX and data visualization practices (5-second rule, intuitive color schemes, clear hierarchy).

---

## 📊 Conversion Funnel Steps
1. **Session Start** (`session_start`)
2. **Product View** (`view_item`)
3. **Add to Cart** (`add_to_cart`)
4. **Begin Checkout** (`begin_checkout`)
5. **Add Shipping Info** (`add_shipping_info`)
6. **Add Payment Info** (`add_payment_info`)
7. **Purchase** (`purchase`)

---

## 🔍 Available Breakdown Dimensions (Filters & Views)
* **Traffic Acquisition:** Source, Medium, Campaign
* **Behavioral:** Landing Page
* **Technology:** Device Category, Operating System, Device Language
* **Time:** Session Start Time / Date Range Filter

---

## 🛠️ Tech Stack & Resources

| Component | Technology / Link |
| :--- | :--- |
| **Data Source** | Google Analytics 4 (GA4) Public Dataset in BigQuery |
| **Data Transformation** | SQL (Google BigQuery) |
| **Data Visualization** | Tableau Public |

---

## 🔗 Live Links
* 📊 **Interactive Tableau Dashboard:** [View on Tableau Public](https://public.tableau.com/app/profile/anastasiia.hryhorenko4955/viz/Project1_17849145849360/Dashboard1)
* 💾 **BigQuery SQL Query:** [Open BigQuery Query Link](https://console.cloud.google.com/bigquery?sq=203141496194:6b389b254726451a9145c24179228335)

---

## 📁 Repository Structure
```text
├── README.md             # Project documentation
├── queries/
│   └── funnel_analysis.sql # SQL transformation script used for GA4 data
