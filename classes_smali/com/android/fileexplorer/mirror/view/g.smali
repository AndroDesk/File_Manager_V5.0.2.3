.class public final synthetic Lcom/android/fileexplorer/mirror/view/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;

.field public final synthetic b:Landroid/widget/ListView;

.field public final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;Landroid/widget/ListView;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/g;->a:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/g;->b:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/fileexplorer/mirror/view/g;->c:I

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/g;->a:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/g;->b:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/fileexplorer/mirror/view/g;->c:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->b(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;Landroid/widget/ListView;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
