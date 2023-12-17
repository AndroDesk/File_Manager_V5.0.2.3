.class Lcom/android/fileexplorer/view/GuideDialog$5;
.super Ljava/lang/Object;
.source "GuideDialog.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/GuideDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/GuideDialog;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/GuideDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 3
    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/GuideDialog;->access$600(Lcom/android/fileexplorer/view/GuideDialog;I)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$100(Lcom/android/fileexplorer/view/GuideDialog;)Ljava/util/ArrayList;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$500(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/app/Activity;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->access$700(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)I

    .line 31
    move-result p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 38
    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$800(Lcom/android/fileexplorer/view/GuideDialog;)Lmiuix/appcompat/app/AlertDialog;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method
