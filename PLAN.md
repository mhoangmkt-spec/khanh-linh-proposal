# PLAN — Proposal Marketing cho Trung Tâm Tiếng Trung Khánh Linh

> File này là **điểm khởi đầu** mỗi session làm việc. Mở session mới → đọc file này → hiểu ngay đang ở đâu, làm gì tiếp.

---

## 1. Mục tiêu dự án

Xây dựng **bộ template proposal marketing chuẩn** cho Trung Tâm Tiếng Trung Khánh Linh, đảm bảo:

- Quy trình logic, có checkpoint cho người duyệt (human-in-the-loop)
- Design system đồng bộ giữa mọi proposal
- Tách rõ phần "luật" (markdown) và "preview" (HTML)
- Tái sử dụng được cho nhiều khách hàng tương lai (nếu cần)

**Output cuối:** Proposal marketing dạng HTML, gửi link cho khách xem trực tiếp.

---

## 2. Cấu trúc thư mục

```
Trung Tâm Khánh Linh/
│
├── PLAN.md                          ← FILE NÀY (đọc đầu tiên mỗi session)
│
├── 00-brand-input/                  ← Chờ user gửi brand
│   └── README.md
│
├── 01-design-system/                ← Nền tảng design (dùng chung)
│   ├── design-system.md             ← Luật (tokens, rules)
│   └── design-system.html           ← Preview (chưa tạo, đợi brand)
│
├── 02-templates/                    ← Template tái sử dụng
│   ├── brief-template.md            ← Form thu thập thông tin khách
│   ├── strategy-template.md         ← Khung chiến lược
│   ├── proposal-outline.md          ← Wireframe 12-15 slide
│   └── proposal-template.html       ← (chưa tạo, đợi brand + duyệt outline)
│
└── 03-proposals/                    ← Mỗi proposal khách 1 folder con
    └── README.md
```

---

## 3. Workflow — Quy trình làm 1 proposal

Mỗi proposal đi qua **5 bước**, có checkpoint duyệt ở mỗi bước:

### Bước 1 — Brief (thu thập thông tin)
- Copy `02-templates/brief-template.md` → folder khách
- Điền cùng khách (hoặc khách tự điền rồi gửi)
- ⚠️ **CHECKPOINT 1:** Bạn duyệt brief đã đủ thông tin chưa trước khi sang Bước 2

### Bước 2 — Strategy (xây chiến lược)
- Copy `02-templates/strategy-template.md` → folder khách
- Viết Objectives → Audience → Big Idea → Channels → KPI
- ⚠️ **CHECKPOINT 2:** Khách duyệt **hướng tiếp cận** trước khi sang creative (tránh tốn công làm sai hướng)

### Bước 3 — Draft Content (viết nội dung chi tiết bằng .md)
- Tạo `proposal-content.md` trong folder khách
- Viết text dài, thoải mái — KHÔNG lo layout
- Lý do dùng .md trước: sửa text dễ hơn sửa HTML 10 lần
- ⚠️ **CHECKPOINT 3:** Bạn review nội dung text trước khi build HTML

### Bước 4 — Build HTML Proposal
- Copy `02-templates/proposal-template.html` → folder khách → đổi tên `proposal.html`
- "Cô đặc" content từ .md sang HTML, tuân thủ quy tắc **1 slide = 1 message**
- Content quá dài → tách sang appendix .xlsx
- ⚠️ **CHECKPOINT 4:** Review nội bộ trước khi gửi khách

### Bước 5 — Pricing & Send
- Tạo `pricing.xlsx` riêng (báo giá + timeline gantt)
- Link từ slide pricing trong HTML sang file xlsx
- ⚠️ **CHECKPOINT 5:** Duyệt với sếp/finance trước khi gửi

---

## 4. Nguyên tắc Design System

**Lý do dùng combo `.md` + `.html`:**

| File | Vai trò | Ai đọc |
|------|---------|--------|
| `design-system.md` | Luật chơi (tokens, rules) | AI / designer / dev đọc để build đúng chuẩn |
| `design-system.html` | Styleguide live (visual preview) | Mắt nhìn — khách/sếp duyệt design |

**Nguyên tắc cập nhật:**
- Sửa tokens trong `.md` → update CSS variables trong `.html` → mọi proposal kế thừa tự động đồng bộ
- KHÔNG hardcode màu/font trong proposal HTML — chỉ dùng CSS variables từ design system

---

## 5. Trạng thái hiện tại

**Đã hoàn thành:**
- [x] PLAN.md (file này)
- [x] Folder structure 4 cấp
- [x] `01-design-system/design-system.md` — khung placeholder (chờ brand thật)
- [x] `02-templates/brief-template.md`
- [x] `02-templates/strategy-template.md`
- [x] `02-templates/proposal-outline.md` — wireframe 12-15 slide

**Đang chờ:**
- [ ] User gửi brand guideline (logo, màu chính, font) → đặt vào `00-brand-input/`
- [ ] Sau khi có brand → build `design-system.html` (preview)
- [ ] Sau khi có brand + duyệt outline → build `proposal-template.html`

---

## 6. Next Steps (cho session mới)

Khi mở session mới, làm theo thứ tự:

1. **Đọc PLAN.md** (file này) để nắm tình trạng
2. **Kiểm tra `00-brand-input/`** xem user đã gửi brand chưa
   - Nếu CHƯA: nhắc user gửi brand (logo, màu chính, font, ví dụ design tham khảo)
   - Nếu RỒI: đọc brand → update `design-system.md` với tokens thật → build `design-system.html`
3. **Cùng user review `proposal-outline.md`** — chốt cấu trúc 12-15 slide trước khi đụng HTML
4. **Build `proposal-template.html`** dùng design system + outline đã duyệt
5. **Bắt đầu proposal đầu tiên:** tạo folder trong `03-proposals/[tên-khách]/`, copy các template vào, đi qua 5 bước workflow

---

## 7. Ghi chú cho Claude (AI agent)

- Mặc định trả lời bằng tiếng Việt
- Tuân thủ workflow human-in-the-loop: **không nhảy bước**, mỗi bước dừng lại hỏi user duyệt
- Khi sửa design: chỉ sửa tokens trong `design-system.md` rồi propagate, không hardcode trong proposal
- Khi viết content: ưu tiên `.md` trước, HTML sau (sửa text trong markdown dễ hơn)
- Tiếng Trung trong content: dùng font hỗ trợ Hán tự (Noto Sans SC / Source Han Sans), khai báo trong design system

---

*Cập nhật lần cuối: 2026-05-23*
