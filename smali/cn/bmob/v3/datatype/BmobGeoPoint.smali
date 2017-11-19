.class public Lcn/bmob/v3/datatype/BmobGeoPoint;
.super Ljava/lang/Object;
.source "BmobGeoPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static EARTH_MEAN_RADIUS_KM:D = 0.0

.field public static EARTH_MEAN_RADIUS_MILE:D = 0.0

.field private static final serialVersionUID:J = -0x231389ad8b12b513L


# instance fields
.field private __type:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    sput-wide v0, Lcn/bmob/v3/datatype/BmobGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    .line 18
    const-wide v0, 0x40aeed999999999aL    # 3958.8

    sput-wide v0, Lcn/bmob/v3/datatype/BmobGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->latitude:Ljava/lang/Double;

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->longitude:Ljava/lang/Double;

    .line 24
    const-string v0, "GeoPoint"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->__type:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 5
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->latitude:Ljava/lang/Double;

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->longitude:Ljava/lang/Double;

    .line 24
    const-string v0, "GeoPoint"

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->__type:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/datatype/BmobGeoPoint;->setLongitude(D)V

    .line 43
    invoke-virtual {p0, p3, p4}, Lcn/bmob/v3/datatype/BmobGeoPoint;->setLatitude(D)V

    .line 44
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->latitude:Ljava/lang/Double;

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->longitude:Ljava/lang/Double;

    .line 46
    return-void
.end method


# virtual methods
.method public distanceInKilometersTo(Lcn/bmob/v3/datatype/BmobGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcn/bmob/v3/datatype/BmobGeoPoint;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcn/bmob/v3/datatype/BmobGeoPoint;->distanceInRadiansTo(Lcn/bmob/v3/datatype/BmobGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcn/bmob/v3/datatype/BmobGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInMilesTo(Lcn/bmob/v3/datatype/BmobGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcn/bmob/v3/datatype/BmobGeoPoint;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcn/bmob/v3/datatype/BmobGeoPoint;->distanceInRadiansTo(Lcn/bmob/v3/datatype/BmobGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcn/bmob/v3/datatype/BmobGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInRadiansTo(Lcn/bmob/v3/datatype/BmobGeoPoint;)D
    .locals 12
    .param p1, "point"    # Lcn/bmob/v3/datatype/BmobGeoPoint;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide v8, 0x3f91df46a2529d3aL    # 0.0174532925199433

    .line 95
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v8

    .line 96
    iget-object v2, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v8

    .line 97
    invoke-virtual {p1}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v8

    .line 98
    invoke-virtual {p1}, Lcn/bmob/v3/datatype/BmobGeoPoint;->getLongitude()D

    move-result-wide v6

    mul-double/2addr v6, v8

    .line 99
    sub-double v8, v0, v4

    .line 100
    sub-double/2addr v2, v6

    .line 101
    div-double v6, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 102
    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 103
    mul-double/2addr v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    .line 105
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 3
    .param p1, "latitude"    # D

    .prologue
    .line 53
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be within the range (-90.0, 90.0)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->latitude:Ljava/lang/Double;

    .line 58
    return-void
.end method

.method public setLongitude(D)V
    .locals 3
    .param p1, "longitude"    # D

    .prologue
    .line 73
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be within the range (-180.0, 180.0)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/BmobGeoPoint;->longitude:Ljava/lang/Double;

    .line 78
    return-void
.end method
