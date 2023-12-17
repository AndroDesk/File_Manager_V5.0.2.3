.class Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;
.super Ljava/lang/Object;
.source "ServerControlFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/ServerControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnAccountCallback"
.end annotation


# instance fields
.field private handleAccountSet:Z

.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/ServerControlFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->this$0:Lcom/android/fileexplorer/fragment/ServerControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->handleAccountSet:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;Lcom/android/fileexplorer/fragment/ServerControlFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;-><init>(Lcom/android/fileexplorer/fragment/ServerControlFragment;)V

    return-void
.end method


# virtual methods
.method public onAccountChange(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccountChange isRight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerControlFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->handleAccountSet:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->this$0:Lcom/android/fileexplorer/fragment/ServerControlFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/ServerControlFragment;->access$100(Lcom/android/fileexplorer/fragment/ServerControlFragment;Z)V

    :cond_1f
    return-void
.end method

.method public setHandleAccountSet(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/ServerControlFragment$OnAccountCallback;->handleAccountSet:Z

    return-void
.end method
