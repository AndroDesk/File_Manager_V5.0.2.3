.class Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;
.super Ljava/lang/Object;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextHighlighter"
.end annotation


# instance fields
.field public mActivatedColor:I

.field public mHighlightColor:I

.field public mIndexerTextSize:I

.field public mIndexes:[Ljava/lang/String;

.field public mNormalColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    sget v1, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTable:I

    .line 10
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_2a

    .line 17
    array-length v3, v1

    .line 18
    new-array v3, v3, [Ljava/lang/String;

    .line 20
    iput-object v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 22
    array-length v3, v1

    .line 23
    move v4, v2

    .line 24
    move v5, v4

    .line 25
    :goto_18
    if-ge v4, v3, :cond_32

    .line 27
    aget-object v6, v1, v4

    .line 29
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 31
    add-int/lit8 v8, v5, 0x1

    .line 33
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    aput-object v6, v7, v5

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 41
    move v5, v8

    .line 42
    goto :goto_18

    .line 43
    :cond_2a
    sget v1, Lmiuix/miuixbasewidget/R$array;->alphabet_table:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    .line 51
    :cond_32
    sget v1, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTextColorList:I

    .line 53
    sget v3, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_text_light:I

    .line 55
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    move-result v1

    .line 59
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 62
    move-result-object p1

    .line 63
    const/4 v1, 0x1

    .line 64
    new-array v3, v1, [I

    .line 66
    const v4, 0x10100a1

    .line 69
    aput v4, v3, v2

    .line 71
    sget v4, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_highlight_text_color:I

    .line 73
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 76
    move-result v4

    .line 77
    invoke-virtual {p1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 80
    move-result v3

    .line 81
    iput v3, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mHighlightColor:I

    .line 83
    new-array v1, v1, [I

    .line 85
    const v3, 0x10102fe

    .line 88
    aput v3, v1, v2

    .line 90
    sget v3, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_activated_text_color:I

    .line 92
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 95
    move-result v3

    .line 96
    invoke-virtual {p1, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 99
    move-result v1

    .line 100
    iput v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mActivatedColor:I

    .line 102
    new-array v1, v2, [I

    .line 104
    sget v2, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_alphabet_indexer_text_color:I

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 109
    move-result v2

    .line 110
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 113
    move-result p1

    .line 114
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mNormalColor:I

    .line 116
    sget p1, Lmiuix/miuixbasewidget/R$styleable;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTextSize:I

    .line 118
    sget v1, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_alphabet_indexer_text_size:I

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 123
    move-result v0

    .line 124
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexerTextSize:I

    .line 130
    return-void
.end method
