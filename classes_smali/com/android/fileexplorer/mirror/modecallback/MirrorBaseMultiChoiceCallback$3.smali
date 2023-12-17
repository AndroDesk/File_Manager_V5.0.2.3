.class Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;
.super Ljava/lang/Object;
.source "MirrorBaseMultiChoiceCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->showEncryptDialog(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

.field public final synthetic val$checkedItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;->this$0:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;->val$checkedItems:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;->this$0:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 3
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$3;->val$checkedItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

    .line 8
    return-void
.end method
