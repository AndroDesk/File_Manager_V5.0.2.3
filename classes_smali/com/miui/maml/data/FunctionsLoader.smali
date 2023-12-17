.class public Lcom/miui/maml/data/FunctionsLoader;
.super Ljava/lang/Object;
.source "FunctionsLoader.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .registers 0

    invoke-static {}, Lcom/miui/maml/data/BaseFunctions;->load()V

    invoke-static {}, Lcom/miui/maml/data/StringFunctions;->load()V

    invoke-static {}, Lcom/miui/maml/data/FormatFunctions;->load()V

    return-void
.end method
