.class synthetic Lcom/miui/maml/elements/ScreenElement$2;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

.field public static final synthetic $SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/miui/maml/elements/ScreenElement$Align;->values()[Lcom/miui/maml/elements/ScreenElement$Align;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    .line 19
    :catch_12
    const/4 v0, 0x2

    .line 20
    :try_start_13
    sget-object v2, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 22
    sget-object v3, Lcom/miui/maml/elements/ScreenElement$Align;->RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    invoke-static {}, Lcom/miui/maml/elements/ScreenElement$AlignV;->values()[Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 33
    move-result-object v2

    .line 34
    array-length v2, v2

    .line 35
    new-array v2, v2, [I

    .line 37
    sput-object v2, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    .line 39
    :try_start_26
    sget-object v3, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 41
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 44
    move-result v3

    .line 45
    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    .line 47
    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    .line 49
    sget-object v2, Lcom/miui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 54
    move-result v2

    .line 55
    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    .line 57
    :catch_38
    return-void
.end method
