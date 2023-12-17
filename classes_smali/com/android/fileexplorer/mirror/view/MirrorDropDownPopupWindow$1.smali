.class Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;
.super Landroid/widget/ArrayAdapter;
.source "MirrorDropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;Landroid/content/Context;ILjava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    const v0, 0x7f060105

    goto :goto_21

    :cond_1a
    const v0, 0x7f0f281a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    :goto_21
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_53

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)I

    move-result v1

    if-ne p1, v1, :cond_45

    const p1, 0x7f060101

    goto :goto_4c

    :cond_45
    const p1, 0x7f0f2c96

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    :goto_4c
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_53
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    new-array v1, p3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v0, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-object p2
.end method
