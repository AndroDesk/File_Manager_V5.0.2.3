.class public final Lu0/h;
.super Ljava/lang/Object;
.source "EmojiTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# instance fields
.field public final a:Landroid/text/method/TransformationMethod;


# direct methods
.method public constructor <init>(Landroid/text/method/TransformationMethod;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lu0/h;->a:Landroid/text/method/TransformationMethod;

    .line 6
    return-void
.end method


# virtual methods
.method public final getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object v0, p0, Lu0/h;->a:Landroid/text/method/TransformationMethod;

    .line 10
    if-eqz v0, :cond_f

    .line 12
    invoke-interface {v0, p1, p2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 15
    move-result-object p1

    .line 16
    :cond_f
    if-eqz p1, :cond_2d

    .line 18
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroidx/emoji2/text/f;->b()I

    .line 25
    move-result p2

    .line 26
    const/4 v0, 0x1

    .line 27
    if-eq p2, v0, :cond_1d

    .line 29
    goto :goto_2d

    .line 30
    :cond_1d
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 33
    move-result-object p2

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {p2, v0, v1, p1}, Landroidx/emoji2/text/f;->f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 45
    move-result-object p1

    .line 46
    :cond_2d
    :goto_2d
    return-object p1
.end method

.method public final onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lu0/h;->a:Landroid/text/method/TransformationMethod;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 13
    :cond_c
    return-void
.end method
