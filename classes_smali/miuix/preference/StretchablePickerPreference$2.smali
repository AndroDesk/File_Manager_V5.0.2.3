.class Lmiuix/preference/StretchablePickerPreference$2;
.super Ljava/lang/Object;
.source "StretchablePickerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/StretchablePickerPreference;->changeTimeState(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/StretchablePickerPreference;

.field public final synthetic val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference$2;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 3
    iput-object p2, p0, Lmiuix/preference/StretchablePickerPreference$2;->val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$2;->this$0:Lmiuix/preference/StretchablePickerPreference;

    .line 3
    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference$2;->val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    .line 5
    invoke-static {p1, v0, p2}, Lmiuix/preference/StretchablePickerPreference;->access$600(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    .line 8
    return-void
.end method
