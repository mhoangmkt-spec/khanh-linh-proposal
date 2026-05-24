# Design System — Trung Tâm Tiếng Trung Khánh Linh

> **Trạng thái:** CONFIRMED — cập nhật 2026-05-23.
> Phong cách: **Soft Glass Light** (Style 2). Font: **Be Vietnam Pro**.

---

## 0. Phong Cách Thiết Kế

**Soft Glass Light** — nền sáng gradient nhẹ, card kính mờ trắng, typography teal đậm.

| Thuộc tính | Giá trị |
|------------|---------|
| Nền chính | `linear-gradient(145deg, #EEF7FC 0%, #F5F8FB 50%, #EAF0F8 100%)` |
| Card | `rgba(255,255,255,0.82)` + `backdrop-filter: blur(16px)` + border `rgba(28,80,112,0.10)` |
| Nav | `rgba(255,255,255,0.75)` + `backdrop-filter: blur(12px)` |
| CTA banner | `linear-gradient(135deg, #1C5070, #2E86AB)` |
| Border radius card | `14px` |
| Border radius button | `8px` |

---

## 1. Color Tokens

| Token | Mô tả | Giá trị | Dùng ở đâu |
|-------|-------|---------|------------|
| `--color-primary` | Màu chính thương hiệu | `#1C5070` | Logo, CTA button, heading chính |
| `--color-primary-mid` | Gradient mid-point | `#2E86AB` | Hover, gradient pair, link |
| `--color-primary-light` | Accent sáng | `#48C5C0` | Icon, badge, tag tích cực |
| `--color-secondary` | Màu phụ nổi bật | `#F4A261` | CTA nổi bật, highlight, sale badge |
| `--color-accent` | Màu hiện đại / gen Z | `#7C6FCD` | Gradient pair tím, tag đặc biệt |
| `--color-dark-navy` | Nền tối | `#0A2540` | Dark section, footer |
| `--color-text-primary` | Chữ chính | `#1A1A2E` | Heading, body text đậm |
| `--color-text-secondary` | Chữ phụ | `#6B8A99` | Caption, meta, placeholder |
| `--color-text-muted` | Chữ mờ | `#8AABB8` | Label phụ, hint |
| `--color-bg` | Nền chính | `#FFFFFF` | Background slide, card |
| `--color-bg-soft` | Nền nhẹ teal | `#EEF7FC` | Section nền xen kẽ |
| `--color-bg-page` | Nền trang | `#F5F8FB` | Page background |
| `--color-border` | Đường viền | `rgba(28,80,112,0.10)` | Card border, divider |
| `--color-border-soft` | Đường viền nhẹ | `rgba(28,80,112,0.07)` | Section divider |
| `--color-success` | Trạng thái OK | `#16A34A` | Check, KPI đạt |
| `--color-warning` | Cảnh báo | `#F59E0B` | Note, deadline |

### Gradient Presets

| Tên | Giá trị | Dùng ở đâu |
|-----|---------|------------|
| `gradient-teal` | `linear-gradient(135deg, #1C5070, #2E86AB, #48C5C0)` | Background section chính |
| `gradient-hero` | `linear-gradient(135deg, #1C5070, #2E86AB)` | CTA banner, hero dark strip |
| `gradient-page` | `linear-gradient(145deg, #EEF7FC, #F5F8FB, #EAF0F8)` | Nền trang |
| `gradient-logo` | `linear-gradient(135deg, #1C5070, #2E86AB)` | Logo icon background |

---

## 2. Typography

### Font Stack

| Token | Font | Note |
|-------|------|------|
| `--font-heading` | `'Be Vietnam Pro', sans-serif` | Headline, tiêu đề slide, nav brand |
| `--font-body` | `'Be Vietnam Pro', sans-serif` | Body text, caption, button |
| `--font-chinese` | `'Noto Sans SC', sans-serif` | Hán tự xen kẽ trong content |

**Import Google Fonts:**
```html
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700&family=Noto+Sans+SC:wght@400;500;700&display=swap" rel="stylesheet">
```

⚠️ **Quan trọng cho trung tâm tiếng Trung:** font phải hỗ trợ render Hán tự đẹp. Dùng Google Fonts: Noto Sans SC.

### Type Scale

| Token | Size | Line height | Dùng cho |
|-------|------|-------------|----------|
| `--text-h1` | 48px / 3rem | 1.1 | Cover slide title |
| `--text-h2` | 36px / 2.25rem | 1.2 | Section heading |
| `--text-h3` | 28px / 1.75rem | 1.3 | Slide title |
| `--text-h4` | 20px / 1.25rem | 1.4 | Sub-heading |
| `--text-body` | 16px / 1rem | 1.6 | Body text |
| `--text-small` | 14px / 0.875rem | 1.5 | Caption, meta |
| `--text-tiny` | 12px / 0.75rem | 1.4 | Footnote |

### Font Weight

- `--weight-regular`: 400
- `--weight-medium`: 500
- `--weight-semibold`: 600
- `--weight-bold`: 700

---

## 3. Spacing System

Dùng scale 4px base:

| Token | Value |
|-------|-------|
| `--space-1` | 4px |
| `--space-2` | 8px |
| `--space-3` | 12px |
| `--space-4` | 16px |
| `--space-6` | 24px |
| `--space-8` | 32px |
| `--space-12` | 48px |
| `--space-16` | 64px |
| `--space-24` | 96px |

**Quy tắc:** Padding section dùng `--space-16` (64px), gap giữa element dùng `--space-6` (24px).

---

## 4. Layout

- **Slide width:** 1280px (16:9 — chuẩn HD)
- **Slide height:** 720px (hoặc auto cho HTML scroll)
- **Max content width:** 1120px (slide width - 80px padding mỗi bên)
- **Section padding:** `--space-16` trên/dưới, `--space-12` trái/phải

---

## 5. Component Rules

### Button
- Padding: `12px 24px`
- Border radius: `8px`
- Font weight: `--weight-semibold`
- Primary: nền `--color-primary`, chữ trắng
- Secondary: viền `--color-primary`, chữ `--color-primary`, nền trong suốt

### Card
- Padding: `--space-6`
- Border radius: `12px`
- Border: `1px solid --color-border`
- Background: `--color-bg`
- Shadow nhẹ: `0 2px 8px rgba(0,0,0,0.04)`

### Section
- Padding dọc: `--space-16`
- Background xen kẽ: `--color-bg` / `--color-bg-soft`

---

## 6. Voice & Tone

**Định hướng cho Trung Tâm Khánh Linh (18–30 tuổi):**
- Truyền cảm hứng văn hóa nhưng không sáo rỗng
- Có tiếng Trung xen kẽ tự nhiên: VD "*Học từ vựng theo phương pháp 联想 (liên tưởng)*"
- Số liệu cụ thể (HSK level, số học viên, % thi đậu) thay vì chung chung

---

## 7. Iconography

- Bộ icon đề xuất: **Lucide Icons** (`https://lucide.dev`) — clean, minimal
- Size mặc định: `24px`, stroke `1.5px`
- Màu: kế thừa từ `currentColor` để dễ theme

---

## 8. Imagery Guidelines

- Hình ảnh học viên thật, không dùng stock photo cliché
- Phong cảnh Trung Quốc thực tế — không lạm dụng đèn lồng đỏ
- Lifestyle shot: học online, học nhóm, du học, café study
- Tone màu ảnh: lạnh nhẹ (cool filter) để đồng bộ với palette teal
- Hán tự trang trí: dùng làm graphic element trong hero, không lạm dụng

---

## 9. CSS Variables — Full Reference

```css
:root {
  /* Colors */
  --color-primary:        #1C5070;
  --color-primary-mid:    #2E86AB;
  --color-primary-light:  #48C5C0;
  --color-secondary:      #F4A261;
  --color-accent:         #7C6FCD;
  --color-dark-navy:      #0A2540;

  /* Text */
  --color-text-primary:   #1A1A2E;
  --color-text-secondary: #6B8A99;
  --color-text-muted:     #8AABB8;

  /* Backgrounds */
  --color-bg:             #FFFFFF;
  --color-bg-soft:        #EEF7FC;
  --color-bg-page:        #F5F8FB;

  /* Borders */
  --color-border:         rgba(28,80,112,0.10);
  --color-border-soft:    rgba(28,80,112,0.07);

  /* Status */
  --color-success:        #16A34A;
  --color-warning:        #F59E0B;

  /* Gradients */
  --gradient-teal:  linear-gradient(135deg, #1C5070, #2E86AB, #48C5C0);
  --gradient-hero:  linear-gradient(135deg, #1C5070, #2E86AB);
  --gradient-page:  linear-gradient(145deg, #EEF7FC, #F5F8FB, #EAF0F8);

  /* Typography */
  --font-heading:   'Be Vietnam Pro', sans-serif;
  --font-body:      'Be Vietnam Pro', sans-serif;
  --font-chinese:   'Noto Sans SC', sans-serif;

  /* Type scale */
  --text-h1:    3rem;      /* 48px — Cover title */
  --text-h2:    2.25rem;   /* 36px — Section heading */
  --text-h3:    1.75rem;   /* 28px — Slide title */
  --text-h4:    1.25rem;   /* 20px — Sub-heading */
  --text-body:  1rem;      /* 16px — Body */
  --text-small: 0.875rem;  /* 14px — Caption */
  --text-tiny:  0.75rem;   /* 12px — Footnote */

  /* Font weights */
  --weight-regular:   400;
  --weight-medium:    500;
  --weight-semibold:  600;
  --weight-bold:      700;

  /* Spacing */
  --space-1:  4px;
  --space-2:  8px;
  --space-3:  12px;
  --space-4:  16px;
  --space-6:  24px;
  --space-8:  32px;
  --space-12: 48px;
  --space-16: 64px;
  --space-24: 96px;

  /* Glass effect */
  --glass-bg:     rgba(255,255,255,0.82);
  --glass-blur:   blur(16px);
  --glass-border: 1px solid rgba(28,80,112,0.10);
  --glass-radius: 14px;
}
```

---

*Cập nhật lần cuối: 2026-05-23 — phong cách Soft Glass Light, font Be Vietnam Pro*
