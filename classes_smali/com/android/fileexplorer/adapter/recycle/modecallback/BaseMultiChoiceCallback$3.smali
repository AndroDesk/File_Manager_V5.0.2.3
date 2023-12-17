.class Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;
.super Ljava/lang/Object;
.source "BaseMultiChoiceCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

.field public final synthetic val$checkedItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;->val$checkedItems:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 3
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$3;->val$checkedItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

    .line 8
    return-void
.end method
