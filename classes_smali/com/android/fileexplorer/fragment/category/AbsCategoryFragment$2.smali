.class Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$2;
.super Ljava/lang/Object;
.source "AbsCategoryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onUserVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadGroupList(ZZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->access$002(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Z)Z

    return-void
.end method
