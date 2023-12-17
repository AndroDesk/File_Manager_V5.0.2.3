.class public final Landroidx/appcompat/widget/q;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# direct methods
.method public static a(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z
    .registers 5

    .line 1
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 4
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    .line 7
    move-result p2

    .line 8
    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 15
    move-result p2

    .line 16
    invoke-virtual {p1}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 19
    :try_start_12
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/text/Spannable;

    .line 25
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 28
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 31
    move-result-object p0

    .line 32
    const/4 p2, 0x3

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    const/16 v1, 0x1f

    .line 37
    if-lt v0, v1, :cond_2c

    .line 39
    new-instance v0, Lm0/c$a;

    .line 41
    invoke-direct {v0, p0, p2}, Lm0/c$a;-><init>(Landroid/content/ClipData;I)V

    .line 44
    goto :goto_31

    .line 45
    :cond_2c
    new-instance v0, Lm0/c$c;

    .line 47
    invoke-direct {v0, p0, p2}, Lm0/c$c;-><init>(Landroid/content/ClipData;I)V

    .line 50
    :goto_31
    invoke-interface {v0}, Lm0/c$b;->build()Lm0/c;

    .line 53
    move-result-object p0

    .line 54
    invoke-static {p1, p0}, Lm0/g0;->i(Landroid/view/View;Lm0/c;)Lm0/c;
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_3d

    .line 57
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :catchall_3d
    move-exception p0

    .line 63
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 66
    throw p0
.end method

.method public static b(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .registers 5

    .line 1
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 4
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 7
    move-result-object p0

    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 v0, 0x1f

    .line 12
    const/4 v1, 0x3

    .line 13
    if-lt p2, v0, :cond_14

    .line 15
    new-instance p2, Lm0/c$a;

    .line 17
    invoke-direct {p2, p0, v1}, Lm0/c$a;-><init>(Landroid/content/ClipData;I)V

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    new-instance p2, Lm0/c$c;

    .line 23
    invoke-direct {p2, p0, v1}, Lm0/c$c;-><init>(Landroid/content/ClipData;I)V

    .line 26
    :goto_19
    invoke-interface {p2}, Lm0/c$b;->build()Lm0/c;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p1, p0}, Lm0/g0;->i(Landroid/view/View;Lm0/c;)Lm0/c;

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0
.end method
