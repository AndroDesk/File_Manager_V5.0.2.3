.class public final Landroidx/appcompat/widget/i;
.super Ljava/lang/Object;
.source "AppCompatEmojiEditTextHelper.java"


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Lu0/a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/i;->a:Landroid/widget/EditText;

    .line 6
    new-instance v0, Lu0/a;

    .line 8
    invoke-direct {v0, p1}, Lu0/a;-><init>(Landroid/widget/EditText;)V

    .line 11
    iput-object v0, p0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 3

    .line 1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    if-eqz v0, :cond_21

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    .line 9
    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of v0, p1, Lu0/e;

    .line 16
    if-eqz v0, :cond_12

    .line 18
    goto :goto_21

    .line 19
    :cond_12
    if-nez p1, :cond_16

    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_21

    .line 23
    :cond_16
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    new-instance v0, Lu0/e;

    .line 30
    invoke-direct {v0, p1}, Lu0/e;-><init>(Landroid/text/method/KeyListener;)V

    .line 33
    move-object p1, v0

    .line 34
    :cond_21
    :goto_21
    return-object p1
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->a:Landroid/widget/EditText;

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
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/i;->d(Z)V

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

.method public final c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    .line 3
    if-nez p1, :cond_9

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_1b

    .line 10
    :cond_9
    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    instance-of v1, p1, Lu0/c;

    .line 17
    if-eqz v1, :cond_13

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    new-instance v1, Lu0/c;

    .line 22
    iget-object v0, v0, Lu0/a$a;->a:Landroid/widget/EditText;

    .line 24
    invoke-direct {v1, v0, p1, p2}, Lu0/c;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 27
    move-object p1, v1

    .line 28
    :goto_1b
    return-object p1
.end method

.method public final d(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    .line 3
    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    .line 5
    iget-object v0, v0, Lu0/a$a;->b:Lu0/g;

    .line 7
    iget-boolean v1, v0, Lu0/g;->d:Z

    .line 9
    if-eq v1, p1, :cond_50

    .line 11
    iget-object v1, v0, Lu0/g;->c:Lu0/g$a;

    .line 13
    if-eqz v1, :cond_3f

    .line 15
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Lu0/g;->c:Lu0/g$a;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-string v3, "initCallback cannot be null"

    .line 26
    invoke-static {v2, v3}, La/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v3, v1, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 31
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 38
    :try_start_25
    iget-object v3, v1, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    .line 40
    invoke-virtual {v3, v2}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    .line 43
    iget-object v1, v1, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    goto :goto_3f

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    iget-object v0, v1, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 63
    throw p1

    .line 64
    :cond_3f
    :goto_3f
    iput-boolean p1, v0, Lu0/g;->d:Z

    .line 66
    if-eqz p1, :cond_50

    .line 68
    iget-object p1, v0, Lu0/g;->a:Landroid/widget/EditText;

    .line 70
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroidx/emoji2/text/f;->b()I

    .line 77
    move-result v0

    .line 78
    invoke-static {p1, v0}, Lu0/g;->a(Landroid/widget/EditText;I)V

    .line 81
    :cond_50
    return-void
.end method
