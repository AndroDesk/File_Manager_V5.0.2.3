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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;Landroid/content/Context;ILjava/util/List;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 7
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)Landroid/content/Context;

    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p3

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)I

    .line 20
    move-result v0

    .line 21
    if-ne p1, v0, :cond_1a

    .line 23
    const v0, 0x7f060105

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    const v0, 0x7f06058c

    .line 30
    :goto_1d
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 33
    move-result p3

    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    instance-of p3, p2, Landroid/widget/TextView;

    .line 39
    if-eqz p3, :cond_4b

    .line 41
    move-object p3, p2

    .line 42
    check-cast p3, Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 46
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;

    .line 56
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow;)I

    .line 59
    move-result v1

    .line 60
    if-ne p1, v1, :cond_41

    .line 62
    const p1, 0x7f060101

    .line 65
    goto :goto_44

    .line 66
    :cond_41
    const p1, 0x7f060100

    .line 69
    :goto_44
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result p1

    .line 73
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    :cond_4b
    const/4 p1, 0x1

    .line 77
    new-array p1, p1, [Landroid/view/View;

    .line 79
    const/4 p3, 0x0

    .line 80
    aput-object p2, p1, p3

    .line 82
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 89
    move-result-object p1

    .line 90
    const/high16 v0, 0x3f800000  # 1.0f

    .line 92
    new-array v1, p3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 94
    invoke-interface {p1, v0, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 97
    move-result-object p1

    .line 98
    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    .line 100
    invoke-interface {p1, p2, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 103
    return-object p2
.end method
