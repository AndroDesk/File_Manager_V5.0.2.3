.class Lcom/android/fileexplorer/smb/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field public data:Lcom/android/fileexplorer/smb/StreamSource;

.field public header:Ljava/util/Properties;

.field public mimeType:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/Response;->header:Ljava/util/Properties;

    iput-object p1, p0, Lcom/android/fileexplorer/smb/Response;->status:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/smb/Response;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/smb/Response;->data:Lcom/android/fileexplorer/smb/StreamSource;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/smb/Response;->header:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
