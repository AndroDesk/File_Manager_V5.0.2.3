.class public final Landroidx/appcompat/widget/q;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z
    .registers 5

    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->beginBatchEdit()V

    :try_start_12
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    const/4 p2, 0x3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2c

    new-instance v0, Lm0/c$a;

    invoke-direct {v0, p0, p2}, Lm0/c$a;-><init>(Landroid/content/ClipData;I)V

    goto :goto_31

    :cond_2c
    new-instance v0, Lm0/c$c;

    invoke-direct {v0, p0, p2}, Lm0/c$c;-><init>(Landroid/content/ClipData;I)V

    :goto_31
    invoke-interface {v0}, Lm0/c$b;->build()Lm0/c;

    move-result-object p0

    invoke-static {p1, p0}, Lm0/g0;->i(Landroid/view/View;Lm0/c;)Lm0/c;
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_3d

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 p0, 0x1

    return p0

    :catchall_3d
    move-exception p0

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    throw p0
.end method

.method public static b(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .registers 5

    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    const/4 v1, 0x3

    if-lt p2, v0, :cond_14

    new-instance p2, Lm0/c$a;

    invoke-direct {p2, p0, v1}, Lm0/c$a;-><init>(Landroid/content/ClipData;I)V

    goto :goto_19

    :cond_14
    new-instance p2, Lm0/c$c;

    invoke-direct {p2, p0, v1}, Lm0/c$c;-><init>(Landroid/content/ClipData;I)V

    :goto_19
    invoke-interface {p2}, Lm0/c$b;->build()Lm0/c;

    move-result-object p0

    invoke-static {p1, p0}, Lm0/g0;->i(Landroid/view/View;Lm0/c;)Lm0/c;

    const/4 p0, 0x1

    return p0
.end method
