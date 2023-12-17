.class Lcom/android/fileexplorer/view/GuideDialog$4;
.super Li1/a;
.source "GuideDialog.java"


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

    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-direct {p0}, Li1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$100(Lcom/android/fileexplorer/view/GuideDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$100(Lcom/android/fileexplorer/view/GuideDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    invoke-static {p2}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->access$200(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$300(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042d2b

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p2}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->access$400(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    goto :goto_44

    :cond_32
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v1}, Lcom/android/fileexplorer/view/GuideDialog;->access$500(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->access$400(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
