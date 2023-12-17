.class Lmiuix/appcompat/app/DateTimePickerDialog$1;
.super Ljava/lang/Object;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/DateTimePickerDialog;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/DateTimePickerDialog;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/DateTimePickerDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog$1;->this$0:Lmiuix/appcompat/app/DateTimePickerDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog$1;->this$0:Lmiuix/appcompat/app/DateTimePickerDialog;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/app/DateTimePickerDialog;->access$000(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1b

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog$1;->this$0:Lmiuix/appcompat/app/DateTimePickerDialog;

    .line 11
    invoke-static {p1}, Lmiuix/appcompat/app/DateTimePickerDialog;->access$000(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lmiuix/appcompat/app/DateTimePickerDialog$1;->this$0:Lmiuix/appcompat/app/DateTimePickerDialog;

    .line 17
    invoke-static {p2}, Lmiuix/appcompat/app/DateTimePickerDialog;->access$100(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    .line 24
    move-result-wide v0

    .line 25
    invoke-interface {p1, p2, v0, v1}, Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiuix/appcompat/app/DateTimePickerDialog;J)V

    .line 28
    :cond_1b
    return-void
.end method
