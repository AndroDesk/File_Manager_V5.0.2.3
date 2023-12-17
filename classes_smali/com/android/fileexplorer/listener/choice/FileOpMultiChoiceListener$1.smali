.class Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$1;
.super Ljava/lang/Object;
.source "FileOpMultiChoiceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

.field public final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Landroid/view/ActionMode;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$1;->this$0:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$1;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$1;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
