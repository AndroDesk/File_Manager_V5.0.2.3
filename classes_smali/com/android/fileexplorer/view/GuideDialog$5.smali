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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/GuideDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/GuideDialog;->access$600(Lcom/android/fileexplorer/view/GuideDialog;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$100(Lcom/android/fileexplorer/view/GuideDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$500(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->access$700(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$5;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$800(Lcom/android/fileexplorer/view/GuideDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
