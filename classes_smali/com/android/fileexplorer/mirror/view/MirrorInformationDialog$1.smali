.class Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$1;
.super Ljava/lang/Object;
.source "MirrorInformationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

.field public final synthetic val$dialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;Lmiuix/appcompat/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$1;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$1;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method
