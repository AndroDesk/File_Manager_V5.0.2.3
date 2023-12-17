.class Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;
.super Ljava/lang/Object;
.source "FileOpMultiChoiceListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->doEncrypt(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

.field public final synthetic val$checkedItems:Ljava/util/List;

.field public final synthetic val$msgId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;ILjava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;->this$0:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iput p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;->val$msgId:I

    iput-object p3, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;->val$checkedItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;->this$0:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iget p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;->val$msgId:I

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener$2;->val$checkedItems:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->access$000(Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;ILjava/util/List;)V

    return-void
.end method
