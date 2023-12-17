.class public final synthetic Lcom/android/fileexplorer/mirror/view/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;

.field public final synthetic b:Landroid/widget/ListView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;Landroid/widget/ListView;ILandroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/f;->a:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/f;->b:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/fileexplorer/mirror/view/f;->c:I

    iput-object p4, p0, Lcom/android/fileexplorer/mirror/view/f;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/f;->a:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/f;->b:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/fileexplorer/mirror/view/f;->c:I

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/f;->d:Landroid/view/View;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->b(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;Landroid/widget/ListView;ILandroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
