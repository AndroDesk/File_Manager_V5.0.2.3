.class Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$4;
.super Ljava/lang/Object;
.source "AppCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFastScrollerCapsule()Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12012a

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->setStyle(I)V

    return-object v0
.end method

.method public isShowCapsule()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
