.class public abstract Lmiui/cloud/net/XAutoAdaptProcessor;
.super Ljava/lang/Object;
.source "XAutoAdaptProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;
    }
.end annotation


# static fields
.field public static final AVALIABLE_PROCESSOR_CREATORS:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 4
    sget-object v1, Lmiui/cloud/net/XByteArrayProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sget-object v1, Lmiui/cloud/net/XPlainTextProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 14
    sget-object v1, Lmiui/cloud/net/XUrlencodedProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 19
    sget-object v1, Lmiui/cloud/net/XJSONProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 24
    sput-object v0, Lmiui/cloud/net/XAutoAdaptProcessor;->AVALIABLE_PROCESSOR_CREATORS:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
