.class Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic access$702(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 3
    return p1
.end method

.method public static synthetic access$802(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 3
    return p1
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 3
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 5
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1b

    .line 15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 17
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$400(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 23
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 28
    :cond_1b
    return-void
.end method
