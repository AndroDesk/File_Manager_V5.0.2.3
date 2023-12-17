.class Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$StringCapsuleViewProvider;
.super Ljava/lang/Object;
.source "BaseCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringCapsuleViewProvider"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$StringCapsuleViewProvider;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public createFastScrollerCapsule()Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$StringCapsuleViewProvider;->context:Landroid/content/Context;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;-><init>(Landroid/content/Context;)V

    .line 8
    const v1, 0x7f120129

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->setStyle(I)V

    .line 14
    return-object v0
.end method

.method public isShowCapsule()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
