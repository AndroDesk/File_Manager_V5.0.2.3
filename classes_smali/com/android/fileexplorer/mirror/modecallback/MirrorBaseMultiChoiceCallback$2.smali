.class Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;->this$0:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iput p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;->val$msgId:I

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;->val$checkedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;->this$0:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;->val$msgId:I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback$2;->val$checkedItems:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;ILjava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->setEncrypt(Z)V

    return-void
.end method
