.class public final enum Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
.super Ljava/lang/Enum;
.source "SearchDataContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/search/SearchDataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostSearchModuleDefinition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

.field public static final enum DEFAULT:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

.field public static final enum FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->DEFAULT:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    const-string v3, "FILE_APP_TAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->$VALUES:[Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->$VALUES:[Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    return-object v0
.end method
