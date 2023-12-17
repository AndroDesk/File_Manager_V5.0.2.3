.class Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner$DropdownPopup;->show(IIFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 5
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->access$200(Lmiuix/appcompat/widget/Spinner;)V

    .line 8
    return-void
.end method
