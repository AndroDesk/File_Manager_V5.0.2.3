.class Lmiuix/appcompat/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;ILmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/TimePickerDialog;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/TimePickerDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/TimePickerDialog$1;->this$0:Lmiuix/appcompat/app/TimePickerDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/TimePickerDialog$1;->this$0:Lmiuix/appcompat/app/TimePickerDialog;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/app/TimePickerDialog;->access$000(Lmiuix/appcompat/app/TimePickerDialog;)V

    .line 6
    return-void
.end method
