.class Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;
.super Ljava/lang/Object;
.source "BaseMultiChoiceCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->doEncrypt(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

.field public final synthetic val$checkedItems:Ljava/util/ArrayList;

.field public final synthetic val$msgId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;ILjava/util/ArrayList;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;->val$msgId:I

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;->val$checkedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;->val$msgId:I

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback$1;->val$checkedItems:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    return-void
.end method
