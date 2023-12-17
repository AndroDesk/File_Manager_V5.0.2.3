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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$StringCapsuleViewProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createFastScrollerCapsule()Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$StringCapsuleViewProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120129

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->setStyle(I)V

    return-object v0
.end method

.method public isShowCapsule()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
