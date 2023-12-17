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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Lu0/f$b;-><init>()V

    new-instance v0, Lu0/f$a;

    invoke-direct {v0, p1}, Lu0/f$a;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 4

    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    xor-int/2addr v0, v1

    if-eqz v0, :cond_c

    return-object p1

    :cond_c
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    invoke-virtual {v0, p1}, Lu0/f$a;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    iget-boolean v0, v0, Lu0/f$a;->c:Z

    return v0
.end method

.method public final c(Z)V
    .registers 4

    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    xor-int/2addr v0, v1

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    invoke-virtual {v0, p1}, Lu0/f$a;->c(Z)V

    return-void
.end method

.method public final d(Z)V
    .registers 4

    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    xor-int/2addr v0, v1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    iput-boolean p1, v0, Lu0/f$a;->c:Z

    goto :goto_15

    :cond_10
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    invoke-virtual {v0, p1}, Lu0/f$a;->d(Z)V

    :goto_15
    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 4

    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    xor-int/2addr v0, v1

    if-eqz v0, :cond_c

    return-object p1

    :cond_c
    iget-object v0, p0, Lu0/f$c;->a:Lu0/f$a;

    invoke-virtual {v0, p1}, Lu0/f$a;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    return-object p1
.end method
