.class public final Landroidx/emoji2/text/p$a;
.super Ljava/lang/Object;
.source "SpannableBuilder.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    iput-object v0, p0, Landroidx/emoji2/text/p$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    iput-object p1, p0, Landroidx/emoji2/text/p$a;->a:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/p$a;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/text/TextWatcher;

    .line 5
    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 8
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/p$a;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/text/TextWatcher;

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 8
    return-void
.end method

.method public final onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/p$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_d

    .line 9
    instance-of v0, p2, Landroidx/emoji2/text/k;

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/emoji2/text/p$a;->a:Ljava/lang/Object;

    .line 16
    check-cast v0, Landroid/text/SpanWatcher;

    .line 18
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 21
    return-void
.end method

.method public final onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/p$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_d

    .line 9
    instance-of v1, p2, Landroidx/emoji2/text/k;

    .line 11
    if-eqz v1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    const/16 v2, 0x1c

    .line 18
    const/4 v3, 0x0

    .line 19
    if-ge v1, v2, :cond_21

    .line 21
    if-le p3, p4, :cond_18

    .line 23
    move v1, v3

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v1, p3

    .line 26
    :goto_19
    if-le p5, p6, :cond_1e

    .line 28
    move v4, v1

    .line 29
    move v6, v3

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    move v6, p5

    .line 32
    move v4, v1

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    move v4, p3

    .line 35
    move v6, p5

    .line 36
    :goto_23
    iget-object v1, p0, Landroidx/emoji2/text/p$a;->a:Ljava/lang/Object;

    .line 38
    check-cast v1, Landroid/text/SpanWatcher;

    .line 40
    move-object v2, p1

    .line 41
    move-object v3, p2

    .line 42
    move v5, p4

    .line 43
    move v7, p6

    .line 44
    invoke-interface/range {v1 .. v7}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 47
    return-void
.end method

.method public final onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/p$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_d

    .line 9
    instance-of v0, p2, Landroidx/emoji2/text/k;

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/emoji2/text/p$a;->a:Ljava/lang/Object;

    .line 16
    check-cast v0, Landroid/text/SpanWatcher;

    .line 18
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 21
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/p$a;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/text/TextWatcher;

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8
    return-void
.end method
