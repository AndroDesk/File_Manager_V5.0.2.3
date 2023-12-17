.class Lcom/android/fileexplorer/apptag/CategoryHelper$Singleton;
.super Ljava/lang/Object;
.source "CategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/CategoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/fileexplorer/apptag/CategoryHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/CategoryHelper;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/apptag/CategoryHelper;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper$Singleton;->INSTANCE:Lcom/android/fileexplorer/apptag/CategoryHelper;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/fileexplorer/apptag/CategoryHelper;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/CategoryHelper$Singleton;->INSTANCE:Lcom/android/fileexplorer/apptag/CategoryHelper;

    .line 3
    return-object v0
.end method
