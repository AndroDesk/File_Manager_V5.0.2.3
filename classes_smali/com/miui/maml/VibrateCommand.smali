.class public Lcom/miui/maml/VibrateCommand;
.super Lcom/miui/maml/ActionCommand;
.source "VibrateCommand.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VibrateCommand"

.field public static final TAG_NAME:Ljava/lang/String; = "VibrateCommand"


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 1

    return-void
.end method
