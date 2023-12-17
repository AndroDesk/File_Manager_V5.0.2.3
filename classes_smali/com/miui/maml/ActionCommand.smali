.class public abstract Lcom/miui/maml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$LoopCommand;,
        Lcom/miui/maml/ActionCommand$MultiCommand;,
        Lcom/miui/maml/ActionCommand$IfCommand;,
        Lcom/miui/maml/ActionCommand$FieldCommand;,
        Lcom/miui/maml/ActionCommand$MethodCommand;,
        Lcom/miui/maml/ActionCommand$BaseMethodCommand;,
        Lcom/miui/maml/ActionCommand$ObjVar;,
        Lcom/miui/maml/ActionCommand$VideoCommand;,
        Lcom/miui/maml/ActionCommand$FunctionPerformCommand;,
        Lcom/miui/maml/ActionCommand$ActionPerformCommand;,
        Lcom/miui/maml/ActionCommand$EaseTypeCommand;,
        Lcom/miui/maml/ActionCommand$FolmeCommand;,
        Lcom/miui/maml/ActionCommand$AnimConfigCommand;,
        Lcom/miui/maml/ActionCommand$AnimStateCommand;,
        Lcom/miui/maml/ActionCommand$AnimationCommand;,
        Lcom/miui/maml/ActionCommand$TickListenerCommand;,
        Lcom/miui/maml/ActionCommand$GraphicsCommand;,
        Lcom/miui/maml/ActionCommand$PbrCommand;,
        Lcom/miui/maml/ActionCommand$SensorBinderCommand;,
        Lcom/miui/maml/ActionCommand$TargetCommand;,
        Lcom/miui/maml/ActionCommand$AnimationProperty;,
        Lcom/miui/maml/ActionCommand$VisibilityProperty;,
        Lcom/miui/maml/ActionCommand$PropertyCommand;,
        Lcom/miui/maml/ActionCommand$DelayCommand;,
        Lcom/miui/maml/ActionCommand$ConditionCommand;,
        Lcom/miui/maml/ActionCommand$ExternCommand;,
        Lcom/miui/maml/ActionCommand$SoundCommand;,
        Lcom/miui/maml/ActionCommand$IntentCommand;,
        Lcom/miui/maml/ActionCommand$VariableBinderCommand;,
        Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;,
        Lcom/miui/maml/ActionCommand$FrameRateCommand;,
        Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;,
        Lcom/miui/maml/ActionCommand$DataSwitchCommand;,
        Lcom/miui/maml/ActionCommand$StateTracker;,
        Lcom/miui/maml/ActionCommand$OnOffCommandHelper;,
        Lcom/miui/maml/ActionCommand$RingModeCommand;,
        Lcom/miui/maml/ActionCommand$ModeToggleHelper;,
        Lcom/miui/maml/ActionCommand$NotificationReceiver;,
        Lcom/miui/maml/ActionCommand$StatefulActionCommand;
    }
.end annotation


# static fields
.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field public mScreenElement:Lcom/miui/maml/elements/ScreenElement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    sput-object v0, Lcom/miui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 6
    return-void
.end method

.method public static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public static create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand;
    .registers 6

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4c

    .line 39
    :cond_e
    new-instance v0, Lcom/miui/maml/util/Variable;

    invoke-direct {v0, p1}, Lcom/miui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 41
    invoke-static {p0, p1, p2}, Lcom/miui/maml/ActionCommand$PropertyCommand;->create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;

    move-result-object p0

    return-object p0

    .line 42
    :cond_1e
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RingMode"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 44
    new-instance p1, Lcom/miui/maml/ActionCommand$RingModeCommand;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/ActionCommand$RingModeCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object p1

    :cond_30
    const-string v0, "Data"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 46
    new-instance p1, Lcom/miui/maml/ActionCommand$DataSwitchCommand;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/ActionCommand$DataSwitchCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object p1

    :cond_3e
    const-string v0, "UsbStorage"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 48
    new-instance p1, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-object p1

    :cond_4c
    :goto_4c
    return-object v1
.end method

.method public static create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "condition"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const-string v3, "delayCondition"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    const-string v3, "delay"

    const-wide/16 v4, 0x0

    .line 3
    invoke-static {p0, v3, v4, v5}, Lcom/miui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v6

    .line 4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v10, "ActionCommand"

    sparse-switch v9, :sswitch_data_264

    goto/16 :goto_18b

    :sswitch_3b
    const-string v9, "LoopCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_18b

    :cond_45
    const/16 v8, 0x19

    goto/16 :goto_18b

    :sswitch_49
    const-string v9, "FunctionCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto/16 :goto_18b

    :cond_53
    const/16 v8, 0x18

    goto/16 :goto_18b

    :sswitch_57
    const-string v9, "FolmeCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto/16 :goto_18b

    :cond_61
    const/16 v8, 0x17

    goto/16 :goto_18b

    :sswitch_65
    const-string v9, "BinderCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    goto/16 :goto_18b

    :cond_6f
    const/16 v8, 0x16

    goto/16 :goto_18b

    :sswitch_73
    const-string v9, "AnimStateCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto/16 :goto_18b

    :cond_7d
    const/16 v8, 0x15

    goto/16 :goto_18b

    :sswitch_81
    const-string v9, "VibrateCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    goto/16 :goto_18b

    :cond_8b
    const/16 v8, 0x14

    goto/16 :goto_18b

    :sswitch_8f
    const-string v9, "FieldCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    goto/16 :goto_18b

    :cond_99
    const/16 v8, 0x13

    goto/16 :goto_18b

    :sswitch_9d
    const-string v9, "IfCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    goto/16 :goto_18b

    :cond_a7
    const/16 v8, 0x12

    goto/16 :goto_18b

    :sswitch_ab
    const-string v9, "SensorCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    goto/16 :goto_18b

    :cond_b5
    const/16 v8, 0x11

    goto/16 :goto_18b

    :sswitch_b9
    const-string v9, "VideoCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c3

    goto/16 :goto_18b

    :cond_c3
    const/16 v8, 0x10

    goto/16 :goto_18b

    :sswitch_c7
    const-string v9, "VariableCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d1

    goto/16 :goto_18b

    :cond_d1
    const/16 v8, 0xf

    goto/16 :goto_18b

    :sswitch_d5
    const-string v9, "AnimationCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_df

    goto/16 :goto_18b

    :cond_df
    const/16 v8, 0xe

    goto/16 :goto_18b

    :sswitch_e3
    const-string v9, "GroupCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ed

    goto/16 :goto_18b

    :cond_ed
    const/16 v8, 0xd

    goto/16 :goto_18b

    :sswitch_f1
    const-string v9, "ExternCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fb

    goto/16 :goto_18b

    :cond_fb
    const/16 v8, 0xc

    goto/16 :goto_18b

    :sswitch_ff
    const-string v9, "PbrCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_109

    goto/16 :goto_18b

    :cond_109
    const/16 v8, 0xb

    goto/16 :goto_18b

    :sswitch_10d
    const-string v9, "MethodCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_117

    goto/16 :goto_18b

    :cond_117
    const/16 v8, 0xa

    goto/16 :goto_18b

    :sswitch_11b
    const-string v9, "FrameRateCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_125

    goto/16 :goto_18b

    :cond_125
    const/16 v8, 0x9

    goto/16 :goto_18b

    :sswitch_129
    const-string v9, "MultiCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_133

    goto/16 :goto_18b

    :cond_133
    const/16 v8, 0x8

    goto :goto_18b

    :sswitch_136
    const-string v9, "EaseTypeCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13f

    goto :goto_18b

    :cond_13f
    const/4 v8, 0x7

    goto :goto_18b

    :sswitch_141
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_148

    goto :goto_18b

    :cond_148
    const/4 v8, 0x6

    goto :goto_18b

    :sswitch_14a
    const-string v9, "AnimConfigCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_153

    goto :goto_18b

    :cond_153
    const/4 v8, 0x5

    goto :goto_18b

    :sswitch_155
    const-string v9, "Command"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15e

    goto :goto_18b

    :cond_15e
    const/4 v8, 0x4

    goto :goto_18b

    :sswitch_160
    const-string v9, "TickListenerCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_169

    goto :goto_18b

    :cond_169
    const/4 v8, 0x3

    goto :goto_18b

    :sswitch_16b
    const-string v9, "SoundCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_174

    goto :goto_18b

    :cond_174
    const/4 v8, 0x2

    goto :goto_18b

    :sswitch_176
    const-string v9, "IntentCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17f

    goto :goto_18b

    :cond_17f
    const/4 v8, 0x1

    goto :goto_18b

    :sswitch_181
    const-string v9, "GraphicsCommand"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18a

    goto :goto_18b

    :cond_18a
    const/4 v8, 0x0

    :goto_18b
    packed-switch v8, :pswitch_data_2ce

    .line 6
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/miui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;

    if-eqz v3, :cond_1a0

    .line 7
    invoke-virtual {v3, p1, p0}, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;->create(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;

    move-result-object p0

    goto/16 :goto_245

    :cond_1a0
    move-object p0, v0

    goto/16 :goto_245

    .line 8
    :pswitch_1a3  #0x19
    new-instance v3, Lcom/miui/maml/ActionCommand$LoopCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$LoopCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 9
    :pswitch_1a9  #0x18
    new-instance v3, Lcom/miui/maml/ActionCommand$FunctionPerformCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$FunctionPerformCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 10
    :pswitch_1af  #0x17
    new-instance v3, Lcom/miui/maml/ActionCommand$FolmeCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$FolmeCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 11
    :pswitch_1b5  #0x16
    new-instance v3, Lcom/miui/maml/ActionCommand$VariableBinderCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$VariableBinderCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 12
    :pswitch_1bb  #0x15
    new-instance v3, Lcom/miui/maml/ActionCommand$AnimStateCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 13
    :pswitch_1c1  #0x14
    new-instance v3, Lcom/miui/maml/VibrateCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/VibrateCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 14
    :pswitch_1c7  #0x13
    new-instance v3, Lcom/miui/maml/ActionCommand$FieldCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$FieldCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 15
    :pswitch_1cd  #0x12
    new-instance v3, Lcom/miui/maml/ActionCommand$IfCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$IfCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 16
    :pswitch_1d3  #0x11
    new-instance v3, Lcom/miui/maml/ActionCommand$SensorBinderCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$SensorBinderCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 17
    :pswitch_1d9  #0x10
    new-instance v3, Lcom/miui/maml/ActionCommand$VideoCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$VideoCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 18
    :pswitch_1df  #0xf
    new-instance v3, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    :goto_1e4
    move-object p0, v3

    goto :goto_245

    .line 19
    :pswitch_1e6  #0xe
    new-instance v3, Lcom/miui/maml/ActionCommand$AnimationCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$AnimationCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 20
    :pswitch_1ec  #0xc
    new-instance v3, Lcom/miui/maml/ActionCommand$ExternCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$ExternCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 21
    :pswitch_1f2  #0xb
    new-instance v3, Lcom/miui/maml/ActionCommand$PbrCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$PbrCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 22
    :pswitch_1f8  #0xa
    new-instance v3, Lcom/miui/maml/ActionCommand$MethodCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$MethodCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 23
    :pswitch_1fe  #0x9
    new-instance v3, Lcom/miui/maml/ActionCommand$FrameRateCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$FrameRateCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 24
    :pswitch_204  #0x8, 0xd
    new-instance v3, Lcom/miui/maml/ActionCommand$MultiCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 25
    :pswitch_20a  #0x7
    new-instance v3, Lcom/miui/maml/ActionCommand$EaseTypeCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$EaseTypeCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 26
    :pswitch_210  #0x6
    new-instance v3, Lcom/miui/maml/ActionCommand$ActionPerformCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$ActionPerformCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 27
    :pswitch_216  #0x5
    new-instance v3, Lcom/miui/maml/ActionCommand$AnimConfigCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$AnimConfigCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    :pswitch_21c  #0x4
    const-string v3, "target"

    .line 28
    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "value"

    .line 29
    invoke-interface {p0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p1, v3, p0}, Lcom/miui/maml/ActionCommand;->create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand;

    move-result-object p0

    goto :goto_245

    .line 31
    :pswitch_22d  #0x3
    new-instance v3, Lcom/miui/maml/ActionCommand$TickListenerCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$TickListenerCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 32
    :pswitch_233  #0x2
    new-instance v3, Lcom/miui/maml/ActionCommand$SoundCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$SoundCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 33
    :pswitch_239  #0x1
    new-instance v3, Lcom/miui/maml/ActionCommand$IntentCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$IntentCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    .line 34
    :pswitch_23f  #0x0
    new-instance v3, Lcom/miui/maml/ActionCommand$GraphicsCommand;

    invoke-direct {v3, p1, p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    goto :goto_1e4

    :goto_245
    if-nez p0, :cond_248

    return-object v0

    :cond_248
    if-eqz v2, :cond_250

    .line 35
    new-instance p1, Lcom/miui/maml/ActionCommand$ConditionCommand;

    invoke-direct {p1, p0, v2}, Lcom/miui/maml/ActionCommand$ConditionCommand;-><init>(Lcom/miui/maml/ActionCommand;Lcom/miui/maml/data/Expression;)V

    move-object p0, p1

    :cond_250
    cmp-long p1, v6, v4

    if-lez p1, :cond_25a

    .line 36
    new-instance p1, Lcom/miui/maml/ActionCommand$DelayCommand;

    invoke-direct {p1, p0, v6, v7}, Lcom/miui/maml/ActionCommand$DelayCommand;-><init>(Lcom/miui/maml/ActionCommand;J)V

    move-object p0, p1

    :cond_25a
    if-eqz v1, :cond_262

    .line 37
    new-instance p1, Lcom/miui/maml/ActionCommand$ConditionCommand;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/ActionCommand$ConditionCommand;-><init>(Lcom/miui/maml/ActionCommand;Lcom/miui/maml/data/Expression;)V

    move-object p0, p1

    :cond_262
    return-object p0

    nop

    :sswitch_data_264
    .sparse-switch
        -0x767f5de0 -> :sswitch_181
        -0x7264f711 -> :sswitch_176
        -0x67717ca4 -> :sswitch_16b
        -0x65361f86 -> :sswitch_160
        -0x642188d5 -> :sswitch_155
        -0x48618908 -> :sswitch_14a
        -0x44fc1feb -> :sswitch_141
        -0x3d79f23d -> :sswitch_136
        -0x2dd3ac0e -> :sswitch_129
        -0x1ab20542 -> :sswitch_11b
        -0xa89b8f6 -> :sswitch_10d
        -0x8b5b575 -> :sswitch_ff
        0x24a136b -> :sswitch_f1
        0x2d9d57ec -> :sswitch_e3
        0x306e6347 -> :sswitch_d5
        0x364dd90f -> :sswitch_c7
        0x39abc670 -> :sswitch_b9
        0x3ca48e11 -> :sswitch_ab
        0x4719ff4e -> :sswitch_9d
        0x4a0cfd11 -> :sswitch_8f
        0x4aa3a2fc -> :sswitch_81
        0x60d7664b -> :sswitch_73
        0x69bdbe21 -> :sswitch_65
        0x7190e150 -> :sswitch_57
        0x74683833 -> :sswitch_49
        0x77cb57e7 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_2ce
    .packed-switch 0x0
        :pswitch_23f  #00000000
        :pswitch_239  #00000001
        :pswitch_233  #00000002
        :pswitch_22d  #00000003
        :pswitch_21c  #00000004
        :pswitch_216  #00000005
        :pswitch_210  #00000006
        :pswitch_20a  #00000007
        :pswitch_204  #00000008
        :pswitch_1fe  #00000009
        :pswitch_1f8  #0000000a
        :pswitch_1f2  #0000000b
        :pswitch_1ec  #0000000c
        :pswitch_204  #0000000d
        :pswitch_1e6  #0000000e
        :pswitch_1df  #0000000f
        :pswitch_1d9  #00000010
        :pswitch_1d3  #00000011
        :pswitch_1cd  #00000012
        :pswitch_1c7  #00000013
        :pswitch_1c1  #00000014
        :pswitch_1bb  #00000015
        :pswitch_1b5  #00000016
        :pswitch_1af  #00000017
        :pswitch_1a9  #00000018
        :pswitch_1a3  #00000019
    .end packed-switch
.end method


# virtual methods
.method public abstract doPerform()V
.end method

.method public finish()V
    .registers 1

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getScreenContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 7
    return-object v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getScreenContext()Lcom/miui/maml/ScreenContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getScreenElement()Lcom/miui/maml/elements/ScreenElement;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    return-object v0
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public isExpressionsValid([Lcom/miui/maml/data/Expression;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_14

    .line 4
    move v1, v0

    .line 5
    :goto_4
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_f

    .line 8
    aget-object v2, p1, v1

    .line 10
    if-nez v2, :cond_c

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_4

    .line 16
    :cond_f
    :goto_f
    array-length p1, p1

    .line 17
    if-ne v1, p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    return v0
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public perform()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->doPerform()V

    .line 4
    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method
