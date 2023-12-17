.class public final Lu0/e;
.super Ljava/lang/Object;
.source "EmojiKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/text/method/KeyListener;

.field public final b:Lu0/e$a;


# direct methods
.method public constructor <init>(Landroid/text/method/KeyListener;)V
    .registers 3

    .line 1
    new-instance v0, Lu0/e$a;

    .line 3
    invoke-direct {v0}, Lu0/e$a;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lu0/e;->a:Landroid/text/method/KeyListener;

    .line 11
    iput-object v0, p0, Lu0/e;->b:Lu0/e$a;

    .line 13
    return-void
.end method


# virtual methods
.method public final clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lu0/e;->a:Landroid/text/method/KeyListener;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V

    .line 6
    return-void
.end method

.method public final getInputType()I
    .registers 2

    .line 1
    iget-object v0, p0, Lu0/e;->a:Landroid/text/method/KeyListener;

    .line 3
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lu0/e;->b:Lu0/e$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Landroidx/emoji2/text/f;->i:Ljava/lang/Object;

    .line 8
    const/16 v0, 0x43

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p3, v0, :cond_18

    .line 14
    const/16 v0, 0x70

    .line 16
    if-eq p3, v0, :cond_13

    .line 18
    move v0, v1

    .line 19
    goto :goto_1c

    .line 20
    :cond_13
    invoke-static {p2, p4, v2}, Landroidx/emoji2/text/j;->a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    .line 23
    move-result v0

    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    invoke-static {p2, p4, v1}, Landroidx/emoji2/text/j;->a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    .line 28
    move-result v0

    .line 29
    :goto_1c
    if-eqz v0, :cond_23

    .line 31
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 34
    move v0, v2

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v0, v1

    .line 37
    :goto_24
    if-nez v0, :cond_2e

    .line 39
    iget-object v0, p0, Lu0/e;->a:Landroid/text/method/KeyListener;

    .line 41
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2f

    .line 47
    :cond_2e
    move v1, v2

    .line 48
    :cond_2f
    return v1
.end method

.method public final onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lu0/e;->a:Landroid/text/method/KeyListener;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lu0/e;->a:Landroid/text/method/KeyListener;

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
