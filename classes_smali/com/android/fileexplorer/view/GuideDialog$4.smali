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
.method public constructor <init>(Lcom/android/fileexplorer/view/GuideDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 3
    invoke-direct {p0}, Li1/a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p3, Landroid/view/View;

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$100(Lcom/android/fileexplorer/view/GuideDialog;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$100(Lcom/android/fileexplorer/view/GuideDialog;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;

    .line 13
    invoke-static {p2}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->access$200(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2e

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$300(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/view/LayoutInflater;

    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f0d00bd

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 35
    invoke-static {p2}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->access$400(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)I

    .line 38
    move-result p2

    .line 39
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 42
    const/4 p2, -0x1

    .line 43
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 46
    goto :goto_40

    .line 47
    :cond_2e
    new-instance v0, Landroid/widget/ImageView;

    .line 49
    iget-object v1, p0, Lcom/android/fileexplorer/view/GuideDialog$4;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 51
    invoke-static {v1}, Lcom/android/fileexplorer/view/GuideDialog;->access$500(Lcom/android/fileexplorer/view/GuideDialog;)Landroid/app/Activity;

    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {p2}, Lcom/android/fileexplorer/view/GuideDialog$PageInfo;->access$400(Lcom/android/fileexplorer/view/GuideDialog$PageInfo;)I

    .line 61
    move-result p2

    .line 62
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    :goto_40
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
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
