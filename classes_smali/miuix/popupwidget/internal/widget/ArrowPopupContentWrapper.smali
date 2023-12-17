.class public Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;
.super Landroid/widget/LinearLayout;
.source "ArrowPopupContentWrapper.java"


# instance fields
.field private mMask1:Landroid/graphics/Bitmap;

.field private mMask2:Landroid/graphics/Bitmap;

.field private mMask3:Landroid/graphics/Bitmap;

.field private mMask4:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 5
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 6
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 8
    sget p2, Lmiuix/popupwidget/R$drawable;->miuix_appcompat_popup_mask_1:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask1:Landroid/graphics/Bitmap;

    .line 9
    sget p2, Lmiuix/popupwidget/R$drawable;->miuix_appcompat_popup_mask_2:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    .line 10
    sget p2, Lmiuix/popupwidget/R$drawable;->miuix_appcompat_popup_mask_3:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    .line 11
    sget p2, Lmiuix/popupwidget/R$drawable;->miuix_appcompat_popup_mask_4:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-float v4, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v0

    .line 10
    int-to-float v5, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/16 v7, 0x1f

    .line 16
    move-object v1, p1

    .line 17
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 20
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 23
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask1:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, 0x0

    .line 31
    int-to-float v1, v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v2

    .line 36
    add-int/lit8 v2, v2, 0x0

    .line 38
    int-to-float v2, v2

    .line 39
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 44
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 55
    move-result v2

    .line 56
    sub-int/2addr v1, v2

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 60
    move-result v2

    .line 61
    sub-int/2addr v1, v2

    .line 62
    int-to-float v1, v1

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 66
    move-result v2

    .line 67
    add-int/lit8 v2, v2, 0x0

    .line 69
    int-to-float v2, v2

    .line 70
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 80
    move-result v1

    .line 81
    add-int/lit8 v1, v1, 0x0

    .line 83
    int-to-float v1, v1

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 87
    move-result v2

    .line 88
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 93
    move-result v3

    .line 94
    sub-int/2addr v2, v3

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 98
    move-result v3

    .line 99
    sub-int/2addr v2, v3

    .line 100
    int-to-float v2, v2

    .line 101
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 111
    move-result v1

    .line 112
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 117
    move-result v2

    .line 118
    sub-int/2addr v1, v2

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 122
    move-result v2

    .line 123
    sub-int/2addr v1, v2

    .line 124
    int-to-float v1, v1

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 128
    move-result v2

    .line 129
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 134
    move-result v3

    .line 135
    sub-int/2addr v2, v3

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 139
    move-result v3

    .line 140
    sub-int/2addr v2, v3

    .line 141
    int-to-float v2, v2

    .line 142
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    return-void
.end method
