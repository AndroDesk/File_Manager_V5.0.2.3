.class public final Landroidx/appcompat/widget/j;
.super Ljava/lang/Object;
.source "AppCompatEmojiTextHelper.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lu0/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/TextView;

    .line 6
    new-instance v0, Lu0/f;

    .line 8
    invoke-direct {v0, p1}, Lu0/f;-><init>(Landroid/widget/TextView;)V

    .line 11
    iput-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    .line 13
    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    .line 3
    iget-object v0, v0, Lu0/f;->a:Lu0/f$b;

    .line 5
    invoke-virtual {v0, p1}, Lu0/f$b;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    .line 3
    iget-object v0, v0, Lu0/f;->a:Lu0/f$b;

    .line 5
    invoke-virtual {v0}, Lu0/f$b;->b()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final c(Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lh/j;->AppCompatTextView:[I

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p1

    .line 14
    :try_start_d
    sget p2, Lh/j;->AppCompatTextView_emojiCompatEnabled:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_1a

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 26
    move-result v1
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_21

    .line 27
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/j;->e(Z)V

    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception p2

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    throw p2
.end method

.method public final d(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    .line 3
    iget-object v0, v0, Lu0/f;->a:Lu0/f$b;

    .line 5
    invoke-virtual {v0, p1}, Lu0/f$b;->c(Z)V

    .line 8
    return-void
.end method

.method public final e(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    .line 3
    iget-object v0, v0, Lu0/f;->a:Lu0/f$b;

    .line 5
    invoke-virtual {v0, p1}, Lu0/f$b;->d(Z)V

    .line 8
    return-void
.end method
