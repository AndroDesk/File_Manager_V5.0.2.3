.class Lmiuix/appcompat/widget/Spinner$DialogPopup$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner$DialogPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/appcompat/widget/Spinner$DialogPopup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/Spinner$DialogPopup;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DialogPopup;

    iget-object p1, p1, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-static {p1}, Lmiuix/appcompat/widget/Spinner;->access$200(Lmiuix/appcompat/widget/Spinner;)V

    return-void
.end method
