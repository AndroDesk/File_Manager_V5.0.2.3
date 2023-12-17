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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/content/Context;ILjava/util/List;Landroid/widget/ListView;Landroid/view/View;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 3
    iput-object p5, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->val$listView:Landroid/widget/ListView;

    .line 5
    iput-object p6, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->val$content:Landroid/view/View;

    .line 7
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 10
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

    .line 1
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p4

    .line 5
    const/16 p5, 0x9

    .line 7
    if-ne p4, p5, :cond_2b

    .line 9
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 11
    invoke-static {p4, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;I)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 26
    iget p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 28
    const p2, 0x7f0a006c

    .line 31
    if-ne p1, p2, :cond_26

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 35
    invoke-static {p1, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$200(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 41
    invoke-static {p1, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V

    .line 44
    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    .line 45
    return p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->val$listView:Landroid/widget/ListView;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->val$content:Landroid/view/View;

    .line 9
    new-instance v1, Lcom/android/fileexplorer/mirror/view/f;

    .line 11
    invoke-direct {v1, p0, p3, p1, v0}, Lcom/android/fileexplorer/mirror/view/f;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;Landroid/widget/ListView;ILandroid/view/View;)V

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 17
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 19
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    .line 22
    move-result-object p3

    .line 23
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 29
    iget p3, p3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 31
    const v0, 0x7f0a006c

    .line 34
    if-eq p3, v0, :cond_3e

    .line 36
    const/4 p3, 0x1

    .line 37
    new-array p3, p3, [Landroid/view/View;

    .line 39
    const/4 v0, 0x0

    .line 40
    aput-object p2, p3, v0

    .line 42
    invoke-static {p3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 49
    move-result-object p3

    .line 50
    const/high16 v1, 0x3f800000  # 1.0f

    .line 52
    new-array v2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 54
    invoke-interface {p3, v1, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 57
    move-result-object p3

    .line 58
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 60
    invoke-interface {p3, p2, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 63
    :cond_3e
    instance-of p3, p2, Landroid/widget/TextView;

    .line 65
    if-eqz p3, :cond_56

    .line 67
    move-object p3, p2

    .line 68
    check-cast p3, Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 72
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 82
    iget p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->resId:I

    .line 84
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    :cond_56
    return-object p2
.end method
