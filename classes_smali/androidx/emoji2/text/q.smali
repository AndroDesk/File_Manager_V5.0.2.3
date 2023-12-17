.class public final Landroidx/emoji2/text/q;
.super Landroidx/emoji2/text/k;
.source "TypefaceEmojiSpan.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/i;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/emoji2/text/k;-><init>(Landroidx/emoji2/text/i;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 20
    .param p2  # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    move-object/from16 v7, p9

    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, p0

    iget-object v0, v8, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    move/from16 v1, p7

    int-to-float v5, v1

    iget-object v1, v0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    iget-object v1, v1, Landroidx/emoji2/text/o;->d:Landroid/graphics/Typeface;

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, v0, Landroidx/emoji2/text/i;->a:I

    mul-int/lit8 v2, v1, 0x2

    iget-object v0, v0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    iget-object v1, v0, Landroidx/emoji2/text/o;->b:[C

    const/4 v3, 0x2

    move-object v0, p1

    move v4, p5

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
