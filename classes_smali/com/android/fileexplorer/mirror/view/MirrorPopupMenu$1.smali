.class Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;
.super Landroid/widget/ArrayAdapter;
.source "MirrorPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

.field public final synthetic val$content:Landroid/view/View;

.field public final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/content/Context;ILjava/util/List;Landroid/widget/ListView;Landroid/view/View;)V
    .registers 7

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    iput-object p5, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->val$listView:Landroid/widget/ListView;

    iput-object p6, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->val$content:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;Landroid/widget/ListView;ILandroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->lambda$getView$0(Landroid/widget/ListView;ILandroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getView$0(Landroid/widget/ListView;ILandroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getAction()I

    move-result p4

    const/16 p5, 0x9

    if-ne p4, p5, :cond_2b

    iget-object p4, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p4, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    iget p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    const p2, 0x7f0a006c

    if-ne p1, p2, :cond_26

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p1, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V

    goto :goto_2b

    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p1, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V

    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->val$listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->val$content:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/f;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/android/fileexplorer/mirror/view/f;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;Landroid/widget/ListView;ILandroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    iget p3, p3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    const v0, 0x7f0a006c

    if-eq p3, v0, :cond_3e

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-static {p3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p3

    invoke-interface {p3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p3

    const/high16 v1, 0x3f800000  # 1.0f

    new-array v2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p3, v1, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p3

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p3, p2, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_3e
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_56

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    iget p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->resId:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_56
    return-object p2
.end method
