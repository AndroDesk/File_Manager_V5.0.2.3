.class Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
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
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$2002(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    return-void
.end method
