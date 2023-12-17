.class Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;
.super Ljava/lang/Object;
.source "MirrorBaseMultiChoiceCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->doEncrypt(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

.field public final synthetic val$checkedItems:Ljava/util/ArrayList;

.field public final synthetic val$msgId:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;->val$msgId:I

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;->val$checkedItems:Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 3
    iget p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;->val$msgId:I

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$1;->val$checkedItems:Ljava/util/ArrayList;

    .line 7
    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    .line 10
    return-void
.end method
