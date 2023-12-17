.class Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;
.super Ljava/lang/Object;
.source "FileOpMultiChoiceListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showEncryptDialog(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

.field public final synthetic val$checkedItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;->this$0:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iput-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;->val$checkedItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;->this$0:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$4;->val$checkedItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->encrypt(Ljava/util/List;)V

    return-void
.end method
