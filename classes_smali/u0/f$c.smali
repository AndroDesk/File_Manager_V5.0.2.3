.class public final Lu0/f$c;
.super Lu0/f$b;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lu0/f$a;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lu0/f$b;-><init>()V

    .line 4
    new-instance v0, Lu0/f$a;

    .line 6
    invoke-direct {v0, p1}, Lu0/f$a;-><init>(Landroid/widget/TextView;)V

    .line 9
    iput-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    .line 11
    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 4

    .line 1
    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return-object p1

    .line 13
    :cond_c
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    .line 15
    invoke-virtual {v0, p1}, Lu0/f$a;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    .line 3
    iget-boolean v0, v0, Lu0/f$a;->c:Z

    .line 5
    return v0
.end method

.method public final c(Z)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    .line 15
    invoke-virtual {v0, p1}, Lu0/f$a;->c(Z)V

    .line 18
    return-void
.end method

.method public final d(Z)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_10

    .line 12
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    .line 14
    iput-boolean p1, v0, Lu0/f$a;->c:Z

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    .line 19
    invoke-virtual {v0, p1}, Lu0/f$a;->d(Z)V

    .line 22
    :goto_15
    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 4

    .line 1
    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return-object p1

    .line 13
    :cond_c
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    .line 15
    invoke-virtual {v0, p1}, Lu0/f$a;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
