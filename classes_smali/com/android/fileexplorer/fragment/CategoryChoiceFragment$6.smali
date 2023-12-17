.class Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$6;
.super Ljava/lang/Object;
.source "CategoryChoiceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$6;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$6;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$700(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$6;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$200(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V

    :cond_e
    return-void
.end method
